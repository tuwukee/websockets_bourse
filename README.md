# Websockets Bourse

1. This application should satisfy all basic needs of bourse members
  * anyone who open application should be asked the name
  * after it's done user can sell and buy anything
  * any product that going to be sold should have name, cost of one item and amount
  * to buy something user should just select amount and press one button
  * when user create new product all user see this action in news list and can immediately buy it
  * if product was successfully bought this action should be added to new list with up to date amount of items in stock
  * if user didn't manage to buy product (e.g. somebody else have already bought it) user should see error message
2. News list must be populated via websockets
3. Advanced admins page
  * when admin open bourse it should be added to news, new deals should be allowed
  * when admin close bourse it should be added to news, new deals should be restricted and users should be able only see list of today's deals
4. WebRTC
  * Video calls

#### Start Faye

  rackup private_pub.ru -s thin -E production