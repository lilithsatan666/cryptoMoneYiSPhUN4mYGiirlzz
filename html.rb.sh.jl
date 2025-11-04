<!DOCTYPE html>
<html>
<head>
  <title>Web CMD - Google Search</title>
  <style>
    body { background: #111; color: #eee; font-family: monospace; }
    #cmd { width: 99%; background: #222; color: #0f0; border: none; padding: 8px; }
    #output { margin-top: 10px; white-space: pre-line; }
  </style>
</head>
<body>
  <div>> Type 'google something' to search</div>
  <input id="cmd" autofocus autocomplete="off" placeholder="google qr code scanner uganda">
  <div id="output"></div>
  <script>
    document.getElementById('cmd').addEventListener('keydown', function(e) {
      if(e.key === 'Enter') {
        let val = this.value.trim();
        let out = document.getElementById('output');
        if(val.startsWith('google ')) {
          let query = encodeURIComponent(val.substring(7));
          window.open('https://www.google.com/search?q=' + query, '_blank');
          out.textContent += "> Searching Google for: " + val.substring(7) + "\n";
        } else {
          out.textContent += "> Unknown command: " + val + "\n";
        }
        this.value = '';
      }
    });
  </script>
</body>
</html>


              \7676ui8
