<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class MakeServices extends Command
{
    protected $signature = 'make:service {name}';
    protected $description = 'Generate a new Service class in App\Http\Services';

    public function handle()
    {
        $name = $this->argument('name');

        $directory = app_path('Http/Services');
        $filename = $directory . '/' . $name . '.php';

        if (File::exists($filename)) {
            $this->error("Service {$name} already exists!");
            return;
        }

        if (!File::isDirectory($directory)) {
            File::makeDirectory($directory, 0755, true);
        }

        $content = <<<PHP
        <?php

        namespace App\Http\Services;

        class {$name}
        {
            //
        }
        PHP;

                File::put($filename, $content);

                $this->info("Service {$name} created successfully!");
            }
}
