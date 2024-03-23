<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e9ecef;
            color: #495057;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,.1);
        }
        h1, p {
            margin: 0.5em 0;
        }
        .time {
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Our Site!</h1>
        <p>Thank you for visiting. We're glad to have you here.</p>
        <?php date_default_timezone_set('Asia/Jakarta'); ?>
        <p>The current server time is: <span class="time"><?php echo date('Y-m-d H:i:s'); ?></span></p>
    </div>
</body>
</html>
