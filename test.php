<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <script>
        var url = 'https://newsapi.org/v2/top-headlines?country=id&category=health&apiKey=b6204e9a60a449ef9d5e1f305533c8fa';
        // var url = 'http://newsapi.org/v2/sources?' +
        //     'country=id&' +
        //     'q=indonesia&' +
        //     'from=2020-12-18&' +
        //     'sortBy=popularity&' +
        //     'apiKey=b6204e9a60a449ef9d5e1f305533c8fa';

        var req = new Request(url);

        fetch(req)
            .then(function (response) {
                console.log(response.json());
            })
    </script>
</body>

</html>