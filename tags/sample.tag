<sample>
  <h3>{ opts.headline }</h3>
  <ul>
    <li each={ opts.techs }>{ name }</li>
  </ul>

  <script>
    //this.message = 'Hello, Riot!'
    // this.techs = [
    //   { name: 'HTML' },
    //   { name: 'JavaScript' },
    //   { name: 'CSS' }
    // ]
  </script>

  <style>
    :scope { font-size: 2rem }
    h3 { color: #444 }
    ul { color: #999 }
  </style>
</sample>
