<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
        }

        .red {
            color: red;
        }
    </style>
</head>
<body>
    <h1>PEMILIHAN CALON KETUA HIMA GAMETECH 2023</h1>
    <div class="red">
        <?php echo validation_errors(); ?>
        <?php if (isset($message)) echo '<p>' . $message . '</p>' ?>
    </div>
    <?php echo form_open(''); ?>
    <form action="" method="post" name="login">
        <input type="text" name="kode_registrasi" id="kode_registrasi" value="<?php echo set_value('kode_registrasi'); ?>" placeholder="masukkan kode registrasi" autocomplete="off">
        <button type="submit">Submit</button>
    </form>
</body>
</html>