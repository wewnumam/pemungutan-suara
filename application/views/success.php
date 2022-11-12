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
    <h2>Terimakasih <?= $nama_mahasiswa ?> telah memilih!</h2>
    <p>Input Anda <strong>berhasil</strong> direkam:</p>
    <table border="1">
        <tr>
            <th>Pemilih</th>
            <td><?= $nama_mahasiswa ?></td>
        </tr>
        <tr>
            <th>Pilihan</th>
            <td><?= $pilihan->nama ?></td>
        </tr>
        <tr>
            <th>Memilih Pada</th>
            <td><?= unix_to_human(now('Asia/Jakarta')); ?></td>
        </tr>
    </table>
    <p>You will be redirected in <span id="counter">15</span> second(s).<p>
    <script type="text/javascript">
    function countdown() {
        var i = document.getElementById('counter');
        if (parseInt(i.innerHTML)<=0) {
            location.href = '<?= base_url('/login/logout') ?>';
        }
    if (parseInt(i.innerHTML)!=0) {
        i.innerHTML = parseInt(i.innerHTML)-1;
    }
    }
    setInterval(function(){ countdown(); },1000);
    </script>
</body>
</html>