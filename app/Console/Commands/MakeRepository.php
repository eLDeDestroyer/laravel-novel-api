<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class MakeRepository extends Command
{
    protected $signature = 'make:Repository {name}';
    protected $description = 'Generate a new Repository class in App\Http\Repositories';

    public function handle()
    {
        $name = $this->argument('name');

        $directory = app_path('Http/Repositories');
        $filename = $directory . '/' . $name . '.php';

        if (File::exists($filename)) {
            $this->error("Repository {$name} already exists!");
            return;
        }

        if (!File::isDirectory($directory)) {
            File::makeDirectory($directory, 0755, true);
        }

        $content = <<<PHP
        <?php

        namespace App\Http\Repositories;

        class {$name}
        {
            //
        }
        PHP;

                File::put($filename, $content);

                $this->info("Repository {$name} created successfully!");
            }
}
