# Skill Codex untuk Game Development

Inventaris setup pada **16 Oktober 2026**. Nama skill dicocokkan dengan katalog skill yang tersedia di sesi Codex dan keberadaan file `SKILL.md` pada mesin ini. Terdapat **36 skill inti game dev** dan **54 skill pendukung**, total **90 skill** dalam daftar ini.

Ini adalah catatan skill yang terpasang/tersedia, bukan rekam riwayat yang membuktikan semua skill sudah pernah dipakai. Skill pendukung dicantumkan secara lengkap karena dapat membantu proses game dev; sebagian bersifat opsional dan lintas bidang. Memiliki skill tidak otomatis berarti engine, plugin eksternal, akun, koneksi MCP, atau fitur berbayarnya siap dipakai.

## Cakupan

- Skill inti mencakup Roblox/Luau, Blender/3D, voxel/environment, desain game, ekonomi/narasi, audio/technical art, Godot, Unity, Unreal, generasi aset, vendoring, render debugging, dan performa.
- Skill pendukung mencakup UI/Figma, prototipe web, dokumentasi/Obsidian, spreadsheet balancing, debugging, review, Git, serta pengelolaan skill/plugin.
- `agency-game-designer` dan `game-designer` memang ada sebagai dua instalasi berbeda; keduanya dipertahankan.
- Nama berformat `plugin:skill` mengikuti nama yang ditampilkan dalam katalog sesi, termasuk kapitalisasi `presentations:Presentations` dan `spreadsheets:Spreadsheets`.

## Sumber instalasi

| Sumber | Lokasi relatif ke profil pengguna |
| --- | --- |
| User skills | `.codex/skills/<skill>/SKILL.md` |
| Agent skills | `.agents/skills/<skill>/SKILL.md` |
| Built-in | `.codex/skills/.system/<skill>/SKILL.md` |
| Plugin | `.codex/plugins/cache/<marketplace>/<plugin>/<version>/skills/<skill>/SKILL.md` |
| Runtime | `.codex/plugins/cache/openai-primary-runtime/<package>/<version>/skills/<skill>/SKILL.md` |

Versi di tabel merekam paket yang tersedia saat inventaris, bukan klaim versi terbaru. `local` berarti direktori plugin lokal; nomor rilis tidak ditetapkan dari nama direktorinya.

## Inti: Roblox dan Luau (5)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `roblox-luau` | Scripting Luau, Instances, services, event, dan komunikasi client/server. | User skills |
| `roblox-studio-workflow` | Mengedit project Studio, menjaga struktur yang ada, dan memverifikasi perubahan di server/client. | User skills |
| `agency-roblox-systems-scripter` | Arsitektur sistem Roblox, RemoteEvents, DataStore, dan keamanan server. | User skills |
| `agency-roblox-experience-designer` | Gameplay loop, UX, progression, monetisasi, dan retensi di Roblox. | User skills |
| `agency-roblox-avatar-creator` | Pipeline avatar/UGC, aksesori, rigging, tekstur, dan persiapan submission. | User skills |

## Inti: Blender, environment, dan voxel (5)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `blender-modeling` | Membuat dan mengedit mesh, modifier, hard surface, serta operasi geometri Blender. | User skills |
| `blender-export` | Ekspor dan validasi GLB/glTF, FBX, OBJ, USD, serta STL untuk target pemakaian. | User skills |
| `agency-blender-add-on-engineer` | Add-on Python, validator aset, exporter, dan otomasi pipeline Blender. | User skills |
| `environment-artist` | Environment modular, bangunan, terrain, vegetasi, dan komposisi scene. | User skills |
| `voxel-style` | Arahan visual voxel/Minecraft, grid blok, palet terbatas, dan aset berbasis chunk. | User skills |

## Inti: Desain game, level, ekonomi, dan narasi (5)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `agency-game-designer` | GDD, sistem, mekanik, psikologi pemain, dan gameplay loop. | User skills |
| `game-designer` | Skill desain game dari lokasi agent skills; tetap dicatat terpisah dari agency-game-designer. | Agent skills |
| `agency-economy-designer` | Mata uang, sumber/sink, model monetisasi, inflasi, dan balancing ekonomi. | User skills |
| `agency-level-designer` | Layout, pacing, encounter, alur pemain, dan cerita melalui ruang. | User skills |
| `agency-narrative-designer` | Lore, dialog bercabang, cerita lingkungan, dan sistem naratif. | User skills |

## Inti: Technical art dan audio (2)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `agency-technical-artist` | Shader, VFX, LOD, optimasi aset, dan pipeline art ke engine. | User skills |
| `agency-game-audio-engineer` | Audio interaktif, FMOD/Wwise, musik adaptif, spatial audio, dan anggaran performa. | User skills |

## Inti: Godot (3)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `agency-godot-gameplay-scripter` | GDScript 2.0/C#, komposisi node, signal, dan gameplay Godot 4. | User skills |
| `agency-godot-multiplayer-engineer` | MultiplayerAPI, replikasi, ENet/WebRTC, RPC, dan authority. | User skills |
| `agency-godot-shader-developer` | Shader Godot, VisualShader, efek 2D/3D, dan post-processing. | User skills |

## Inti: Unity (4)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `agency-unity-architect` | Arsitektur modular berbasis data, ScriptableObjects, dan komponen. | User skills |
| `agency-unity-editor-tool-developer` | EditorWindow, PropertyDrawer, importer, dan otomasi editor. | User skills |
| `agency-unity-multiplayer-engineer` | Netcode for GameObjects, Relay/Lobby, authority, dan sinkronisasi state. | User skills |
| `agency-unity-shader-graph-artist` | Shader Graph/HLSL, URP/HDRP, material, dan custom rendering pass. | User skills |

## Inti: Unreal Engine (4)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `agency-unreal-systems-engineer` | Sistem C++/Blueprint, Nanite, Lumen, Gameplay Ability System, dan performa. | User skills |
| `agency-unreal-multiplayer-architect` | Actor replication, GameMode/GameState, prediksi, dan dedicated server. | User skills |
| `agency-unreal-technical-artist` | Material Editor, Niagara, PCG, dan pipeline aset UE5. | User skills |
| `agency-unreal-world-builder` | World Partition, Landscape, foliage prosedural, HLOD, dan streaming dunia. | User skills |

## Inti: Produksi aset, generasi gambar/3D, dan validasi game (8)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `imagegen` | Generasi/edit concept art, referensi, tekstur, sprite, dan gambar raster. | Built-in |
| `tripo-3d:tripo-3d` | Generasi, inspeksi, konversi, tekstur, rigging, dan ekspor model lewat Tripo. | Plugin tripo-3d 0.2.3 |
| `tripo-3d:tripo-game-asset` | Resep aset game: prop low-poly, PBR, LOD, komponen modular, dan karakter animasi. | Plugin tripo-3d 0.2.3 |
| `game-development-studio:game-development-studio` | Orkestrasi lintas produksi aset, vendoring, diagnosis render, dan optimasi terukur. | Plugin game-development-studio 1.0.2 |
| `game-development-studio:game-asset-production` | Membuat, menormalisasi, memvalidasi, dan mengemas aset dengan tooling lokal/provider. | Plugin game-development-studio 1.0.2 |
| `game-development-studio:game-asset-vendoring` | Verifikasi lisensi/integritas dan pemasukan paket aset ke project game. | Plugin game-development-studio 1.0.2 |
| `game-development-studio:game-visual-debugging` | Diagnosis render dengan capture, telemetry, adapter deterministik, dan perbandingan raster. | Plugin game-development-studio 1.0.2 |
| `game-development-studio:game-performance-optimization` | Analisis telemetry, perbandingan baseline/candidate, dan optimasi dengan batas eksplisit. | Plugin game-development-studio 1.0.2 |

## Pendukung: Figma, UI, motion, dan spesifikasi (16)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `figma:figma-code-connect` | Memetakan komponen Figma ke implementasi kode. | Plugin figma 16.0.0 |
| `figma:figma-code-workflows` | Memindahkan HTML/project ke Figma sebagai Design, Code Layer, atau Code/Make. | Plugin figma 16.0.0 |
| `figma:figma-create-new-file` | Membuat file Figma Design, FigJam, atau Slides. | Plugin figma 16.0.0 |
| `figma:figma-design-to-code` | Mengimplementasikan desain Figma menjadi kode aplikasi/UI. | Plugin figma 16.0.0 |
| `figma:figma-generate-design` | Menyusun halaman, panel, dialog, dan layout dengan komponen/tokens desain. | Plugin figma 16.0.0 |
| `figma:figma-generate-diagram` | Flowchart, state machine, arsitektur, sequence, ERD, dan timeline di FigJam. | Plugin figma 16.0.0 |
| `figma:figma-generate-library` | Design tokens, variables, theme, komponen, dan variant library. | Plugin figma 16.0.0 |
| `figma:figma-generative-plugins` | Membuat dan memperbarui plugin Figma generatif. | Plugin figma 16.0.0 |
| `figma:figma-implement-motion` | Menerjemahkan motion Figma ke kode aplikasi. | Plugin figma 16.0.0 |
| `figma:figma-shaders` | Membuat atau mengubah shader/fill prosedural di Figma. | Plugin figma 16.0.0 |
| `figma:figma-spec` | Membaca, menulis, dan meninjau brief, PRD, RFC, atau spec di Figma. | Plugin figma 16.0.0 |
| `figma:figma-swiftui` | Translasi UI SwiftUI/iOS dan desain Figma. | Plugin figma 16.0.0 |
| `figma:figma-use` | Inspeksi dan manipulasi node, variables, komponen, serta auto-layout. | Plugin figma 16.0.0 |
| `figma:figma-use-figjam` | Operasi Figma dalam konteks papan FigJam. | Plugin figma 16.0.0 |
| `figma:figma-use-motion` | Keyframe, easing, timeline, dan animasi node Figma. | Plugin figma 16.0.0 |
| `figma:figma-use-slides` | Operasi Figma dalam konteks Slides/presentasi. | Plugin figma 16.0.0 |

## Pendukung: UI web, prototipe, visualisasi, dan operasi aplikasi (4)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `frontend-design:frontend-design` | Arahan desain visual UI, tipografi, dan implementasi frontend. | Plugin frontend-design (local) |
| `sites:sites` | Membangun atau mengubah website, dashboard, tool, dan game berbasis web. | Plugin sites 1.0.0 |
| `visualize:visualize` | Diagram, simulasi, chart, visualisasi, dan prototipe interaktif dalam percakapan. | Plugin visualize 1.0.49 |
| `computer-use:computer-use` | Mengoperasikan aplikasi melalui alur computer-use yang tersedia. | Plugin computer-use 26.1007.71326 |

## Pendukung: Dokumentasi, knowledge base, dan balancing (9)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `obsidian-markdown` | Catatan Obsidian dengan wikilink, frontmatter, callout, dan embed. | User skills |
| `obsidian-bases` | View/filter/formula database catatan dalam file Obsidian Base. | User skills |
| `json-canvas` | Canvas, node, edge, grup, dan relasi dalam file .canvas. | User skills |
| `documents:documents` | Membuat, mengedit, merender, dan memverifikasi dokumen Word/.docx. | Runtime documents 26.1013.11914 |
| `pdf:pdf` | Membaca, membuat, merender, dan memverifikasi PDF. | Runtime pdf 26.1013.11914 |
| `presentations:Presentations` | Deck PowerPoint/Google Slides untuk pitch dan dokumentasi visual. | Runtime presentations 26.1013.11914 |
| `spreadsheets:Spreadsheets` | Spreadsheet/formula/chart untuk data, balancing, ekonomi, dan analisis. | Runtime spreadsheets 26.1013.11914 |
| `spreadsheets:excel-live-control` | Kontrol workbook Excel pada sesi live yang terhubung. | Runtime spreadsheets 26.1013.11914 |
| `template-creator:template-creator` | Membuat template artefak pribadi yang bisa dipakai ulang. | Runtime template-creator 26.1013.11914 |

## Pendukung: Workflow coding, debugging, review, dan Git (15)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `superpowers:using-superpowers` | Pemilihan dan penggunaan workflow skill yang relevan. | Plugin superpowers 6.4.1 |
| `superpowers:brainstorming` | Menggali kebutuhan, batasan, dan desain sebelum implementasi kreatif. | Plugin superpowers 6.4.1 |
| `superpowers:writing-plans` | Menyusun rencana implementasi bertahap. | Plugin superpowers 6.4.1 |
| `superpowers:executing-plans` | Menjalankan rencana implementasi dalam sesi aktif. | Plugin superpowers 6.4.1 |
| `superpowers:subagent-driven-development` | Pelaksanaan rencana melalui subagent sesuai kebutuhan/otorisasi. | Plugin superpowers 6.4.1 |
| `superpowers:dispatching-parallel-agents` | Delegasi pekerjaan independen ke agent paralel. | Plugin superpowers 6.4.1 |
| `superpowers:systematic-debugging` | Mencari akar penyebab bug melalui bukti sebelum perbaikan. | Plugin superpowers 6.4.1 |
| `superpowers:test-driven-development` | Siklus pengujian sebelum implementasi fitur/perbaikan. | Plugin superpowers 6.4.1 |
| `superpowers:requesting-code-review` | Meminta peninjauan implementasi terhadap kebutuhan. | Plugin superpowers 6.4.1 |
| `superpowers:receiving-code-review` | Memeriksa dan menerapkan feedback review secara teknis. | Plugin superpowers 6.4.1 |
| `superpowers:verification-before-completion` | Memverifikasi hasil sebelum menyatakan pekerjaan selesai. | Plugin superpowers 6.4.1 |
| `superpowers:using-git-worktrees` | Isolasi pekerjaan dengan Git worktree bila diperlukan. | Plugin superpowers 6.4.1 |
| `superpowers:finishing-a-development-branch` | Menentukan integrasi/penyelesaian branch setelah validasi. | Plugin superpowers 6.4.1 |
| `superpowers:writing-skills` | Membuat, mengedit, dan menguji instruksi skill. | Plugin superpowers 6.4.1 |
| `superpowers:diagnosing-superpowers` | Mendiagnosis masalah pada sesi/workflow Superpowers. | Plugin superpowers 6.4.1 |

## Pendukung: Komunikasi dan efisiensi konteks (4)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `caveman:caveman` | Mode komunikasi ringkas dengan detail teknis dipertahankan. | Plugin caveman 0.1.0 |
| `caveman:cavecrew` | Panduan pemilihan subagent dengan keluaran terkompresi. | Plugin caveman 0.1.0 |
| `caveman:caveman-compress` | Mengompres file memori/instruksi berbahasa alami. | Plugin caveman 0.1.0 |
| `caveman:caveman-stats` | Workflow statistik token/savings berbasis log yang didukung skill. | Plugin caveman 0.1.0 |

## Pendukung: Dokumentasi teknis dan pengelolaan Codex (6)

| Skill | Kegunaan | Asal / versi |
| --- | --- | --- |
| `context7-mcp` | Mengambil dokumentasi library/framework/API yang mutakhir lewat Context7. | Agent skills |
| `openai-docs` | Dokumentasi resmi untuk penggunaan, konfigurasi, skill, dan produk OpenAI/Codex. | Built-in |
| `find-skills` | Mencari skill tambahan yang sesuai kebutuhan. | User skills |
| `skill-installer` | Memasang skill dari katalog atau path repository. | Built-in |
| `skill-creator` | Membuat atau memperbarui skill Codex beserta resource pendukung. | Built-in |
| `plugin-management:plugin-management` | Penemuan plugin, pemeriksaan koneksi/izin, dan pengelolaan plugin. | Plugin plugin-management 0.1.0 |

## Di luar hitungan game dev

Tiga skill lain yang tersedia ditujukan khusus untuk pet animasi ChatGPT Work, sehingga tidak dimasukkan ke 90 skill inti/pendukung di atas: `work-pets:create-pet`, `work-pets:pets`, dan `work-pets:update-pet` (plugin work-pets 0.1.6). Itu bukan pipeline aset karakter game umum. Dengan ketiganya, katalog sesi mencakup 93 skill.

Satu folder built-in `review-agent` juga ditemukan di disk, tetapi tidak tercantum sebagai skill yang tersedia pada sesi ini. Folder internal tersebut tidak dianggap sebagai skill game dev yang dapat dipanggil dari katalog sesi.

## Skill dan koneksi tooling

Skill berisi instruksi workflow; koneksi MCP menyediakan tool yang dapat dipakai workflow tersebut. [Dokumentasi resmi OpenAI](https://developers.openai.com/plugins/concepts/skills) menjelaskan perbedaannya. Koneksi seperti Roblox Studio MCP, Blender MCP, Obsidian MCP, dan Context7 MCP dicatat terpisah dari jumlah skill; daftar ini tidak mengklaim koneksinya sudah diuji aktif.

File ini adalah inventaris, tidak menyalin seluruh isi skill dan tidak memasang ulang dependensinya. Untuk memperbaruinya, cocokkan kembali katalog sesi dengan metadata `SKILL.md`, perbarui versi dan jumlahnya, lalu pertahankan pemisahan skill inti, pendukung, serta yang tidak tersedia dalam sesi.
