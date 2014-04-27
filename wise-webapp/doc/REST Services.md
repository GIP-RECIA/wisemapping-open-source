REST Services
---------------

Introduction
-------------

All WiseMapping services are exposed as REST services. Those services are the same used by the WiseMapping when you are using it.
In the following section, all supported services are listed.

REST Console
-------------

You can learn how what are WiseMapping REST API's from using our interactive console. You can access it from here: http://localhost:8080/doc/rest/index.html.
Important: Don't forget to configure your server host url in /WEB-INF/app.properties. By default it's configure to http://localhost:8080/wisemapping/</p>

CURL Usage Examples
-------------

The following variables should be replaced:

- host.name: Host name where WiseMapping is deployed. Default Value: localhost
- host.post: Post number where WiseMapping is deployed. Default Value: 8080
- context.path: Context Path name where the application is deployed. Default Value: wisemapping

Obtaining user information by email:
 * Template Path: /service/admin/users/email/{user.email}.json
 * Example: curl "http://{host.name}:{host.port}/{context.path}/service/admin/users/email/{user.email}.json" --get --basic -u "admin@wisemapping.org:admin"

Deleting a based on the user id:
 * Template Path: /service/admin/users/{userId}
 * curl "http://{host.name}:{host.port}/{context.path}/service/admin/users/{userId}" --request delete --basic -u "admin@wisemapping.org:admin"

Changing Password:
Template Path: /service/admin/users/{userId}/password
 * curl "http://{host.name}:{host.port}/{context.path}/service/admin/users/{userId}/password" --request put --basic -u "admin@wisemapping.org:admin" -H "Content-Type:text/plain" --data "<new_password>"

Creating a new user:
 * Template Path: /service/admin/users/
 * Method: Post
 * curl "http://{host.name}:{host.port}/{context.path}/service/admin/users" --request post --basic -u "admin@wisemapping.org:admin" -H "Content-Type:application/json" --data '{"email": "te2@mydomain.de", "lastname": "lastname", "firstname":"myfirstname","password":"password"}'


