<?php

echo phpinfo();

file_put_contents(__DIR__ . '/public/uuid', uniqid());