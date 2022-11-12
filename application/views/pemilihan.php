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
    <h2>Hi, <?= $nama_mahasiswa ?>, selamat datang!</h2>
    <h1>Silahkan memilih calon ketua HIMA Gametech 2023 di bawah!</h1>
    <div class="red">
        <?php echo validation_errors(); ?>
        <?php if (isset($message)) echo '<p>' . $message . '</p>' ?>
    </div>
    <?php echo form_open(''); ?>
    <form action="" method="post" name="pemilihan" onsubmit="alert('Pilihan Anda tidak dapat dirubah. Pastikan Anda sudah yakin dengan pilihan Anda!');">
        <?php foreach ($kandidat as $k): ?>
            <input type="radio" id="kandidat" name="kandidat" value="<?= $k->no_urut?>" required>
            <label for="html"><?= 
                '(' . $k->no_urut . ') ' . $k->nama . ' [TP' . $k->angkatan .  ']'; ?>
            </label><br>
        <?php endforeach; ?>
        <br>
        <button type="submit">Pilih</button>
    </form>
</body>
</html>