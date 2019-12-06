# How to setup JWT with Keycloak

Login into Keycloak

### Create realm
```
synapse-sunsingerus-com-realm
```
![realm](img/realm.png)


### Create client
```
synapse-jwt
```

Set Access Type to confidential

Enable "Service Accounts" and "Authorization" flags

At the end of the day client should looks like:
![jwt_client](img/jwt_client.png)


### Create mappers

Audience mapper(fix [keycloak](https://issues.jboss.org/browse/KEYCLOAK-6638) ):
![jwt_audience_mapper](img/jwt_audience_mapper.png)


### Create roles

User
![jwt_client_role](img/jwt_client_role.png)

### Assign roles
![jwt_assign_role](img/jwt_assign_role.png)


