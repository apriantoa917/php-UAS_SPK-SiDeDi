<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit7842990a3358e605e4a9168c4bbe13ba
{
    public static $classMap = array (
        'SimpleXLSX' => __DIR__ . '/..' . '/shuchkin/simplexlsx/src/SimpleXLSX.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->classMap = ComposerStaticInit7842990a3358e605e4a9168c4bbe13ba::$classMap;

        }, null, ClassLoader::class);
    }
}
