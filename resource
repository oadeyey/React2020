JQuery

$.ajax
({
  type: "GET",
  url: "https://www.example.com",
  dataType: 'json',
  headers: {
    "Authorization", btoa(username + ":" + password)
  },
  data: '{}',
  success: function (){
   ...
  }
});


React  -- axios

// You can either install base-64 library from npm or use btoa(tok)

componentDidMount() {
        const tok = 'my_username:my_password';
        const hash = Base64.encode(tok);
        const Basic = 'Basic ' + hash;
       axios.get('http://my_url/api/stb', {headers : { 'Authorization' : Basic }})
       .then(function(response) {
           console.log(response.data);
           console.log(response.headers['Authorization']);
       }).catch(err => console.log(err));
    }