<?php

/*
 * Endpoint for Github Webhook URLs
 *
 * see: https://help.github.com/articles/post-receive-hooks
 *
 */

// read config.json
$config_filename = '/srv/science.lesueur.nz/public/config.json';
if (!file_exists($config_filename)) {
    echo "Can't find ".$config_filename;
    throw new Exception("Can't find ".$config_filename);
}
$config = json_decode(file_get_contents($config_filename), true);

if (isset($config['email'])) {
    $headers = 'From: '.$config['email']['from']."\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
}

// execute update script, and record its output
ob_start();
system($config["endpoints"][0]['run']);
$output = ob_get_contents();

// prepare and send the notification email
$body = "";
if (isset($config['email'])) {
    $body .= '<p>Build output:</p><pre>';
    $body .= $output. '</pre>';
    $body .= '<p>Cheers, <br/>Github Webhook Endpoint</p>';

    mail($config['email']['to'], "Build Report", $body, $headers);
}
