User.create(name: 'Melashu')
User.create(name: 'AB')
User.create(name: 'Meron')

Catagory.create(name: 'Enter', author_id: 2)
Catagory.create(name: 'Food', author_id: 2)
Catagory.create(name: 'Traveling', author_id: 2)

Btransaction.create(name: 'Chepees', amount: 85, author_id: 2)
Btransaction.create(name: 'Misa', amount: 70, author_id: 2)
Btransaction.create(name: 'Erat', amount: 50, author_id: 2)

CatagoryTransaction.create(catagory_id: 2, btransaction_id: 1)
CatagoryTransaction.create(catagory_id: 2, btransaction_id: 2)
CatagoryTransaction.create(catagory_id: 2, btransaction_id: 3)

CatagoryTransaction.create(catagory_id: 2, btransaction_id: 2)
CatagoryTransaction.create(catagory_id: 3, btransaction_id: 2)
