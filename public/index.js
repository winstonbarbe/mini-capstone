axios.get("http://localhost:3000/api/products").then(function (response) {
  var recipes = response.data;
  console.log(recipes);
});
