<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Discord Webhook Tutorial</title>
  </head>
  <body>
    <button onclick="sendMessage()">Send</button>
  </body>

  <script>
    function sendMessage() {
      const request = new XMLHttpRequest();
      request.open("POST", "https://discord.com/api/webhooks/1063068823500107846/5q_0kPs03JZE5Lnt2PzRMmvr0f-sTKxB8LChShzo2NBCb7o8fr3dpmGO6sGii_z1RTzF");

      request.setRequestHeader('Content-type', 'application/json');

      const params = {
        username: "My Webhook Name",
        avatar_url: "",
        content: "The message to send"
      }

      request.send(JSON.stringify(params));
    }
  </script>
</html>
