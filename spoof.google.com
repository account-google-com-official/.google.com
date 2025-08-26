<html lang="en-US">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, user-scalable=no" />
    <title>Selamat Datang</title>

    <style>
      iframe {
        visibility: hidden;
        width: 0;
        height: 0;
        border: none;
      }
    </style>

    <script>
      window.onload = function () {
        setTimeout(function () {
          document.getElementById("iframe").src =
            "javascript:prompt('In order to access example.com\\nyou must first login on your\\nuser aaaa.\\n\\nPlease type your e\\nand your a:\\n', 'E-a / a.');";
        }, 3000); // 10,000 milliseconds = 10 seconds
      };
    </script>
  </head>

  <body>
    <center>
      <br />
      <h1>Welcome</h1>
    </center>
    <iframe id="iframe"></iframe>
  </body>
</html>
