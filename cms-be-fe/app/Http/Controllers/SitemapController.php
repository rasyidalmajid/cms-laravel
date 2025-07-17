<?php
namespace App\Http\Controllers;

use Illuminate\Http\Response;
use App\Models\Page;
use App\Models\Agenda;
use App\Models\WebSetting;

class SitemapController extends Controller
{
    public function xml()
    {
        $urls = [];
        $base = url('/');
        // Beranda
        $urls[] = [
            'loc' => $base,
            'lastmod' => now()->toDateString(),
            'changefreq' => 'daily',
            'priority' => '1.0',
        ];
        // Pages
        foreach (Page::all() as $page) {
            $urls[] = [
                'loc' => $base . '/page/' . $page->key_page,
                'lastmod' => optional($page->updated_at ?? $page->created_at)->toDateString() ?? now()->toDateString(),
                'changefreq' => 'monthly',
                'priority' => '0.8',
            ];
        }
        // Agenda
        foreach (Agenda::all() as $agenda) {
            $urls[] = [
                'loc' => $base . '/agenda', // Jika ada detail agenda, ganti ke /agenda/{id} atau slug
                'lastmod' => optional($agenda->updated_at ?? $agenda->tgl)->toDateString() ?? now()->toDateString(),
                'changefreq' => 'weekly',
                'priority' => '0.7',
            ];
        }
        // Kontak
        $urls[] = [
            'loc' => $base . '/kontak',
            'lastmod' => now()->toDateString(),
            'changefreq' => 'yearly',
            'priority' => '0.5',
        ];
        // Gallery (jika ada)
        $urls[] = [
            'loc' => $base . '/gallery',
            'lastmod' => now()->toDateString(),
            'changefreq' => 'monthly',
            'priority' => '0.6',
        ];
        $xml = view('sitemap.xml', compact('urls'))->render();
        return response($xml, 200)->header('Content-Type', 'application/xml');
    }
}
