appid config best stored in a file system or DB and encrypted at rest.
on-baording a new organisation requires
1. create appid instance for the organisation user registry domain
2. create encryption key for organisation to store data at rest
3. create config entry in the database with appid credentials
4. modify ingress to add routing domain for the organisation. Route domain is key to the appid config

