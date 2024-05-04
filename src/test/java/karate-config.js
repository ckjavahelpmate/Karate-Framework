function fn()
{
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env)
  {
    env = 'reqres';
  }
  var config = {
    env: env,
    name : karate.properties['name'] ,
//    username : "Mala" ,
//    id  : 999 ,
//    city : "Pune"
       baseUrl: 'https://gorest.co.in',
       tokenID: '06b2beaf9965ad2063a57aa0da5d3f421f5e0e83d461349305952526125da919'

  }

  if (env == 'dev')
  {

  }
  else if (env == 'e2e')
  {
    // customize
  }
  else if (env == 'reqres')
    {
   config.reqresUrl = 'https://reqres.in/' ;
  }
  karate.log('karate.env system property was:', env);
  return config;
}