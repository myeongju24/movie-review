class Point < ActiveHash::Base
  self.data = [
    { id: 1,  name: '--' },
    { id: 2,  name: '1点'},
    { id: 3,  name: '2点' },
    { id: 4,  name: '3点' },
    { id: 5,  name: '4点' },
    { id: 6,  name: '5点' },
    { id: 7,  name: '6点' },
    { id: 8,  name: '7点' },
    { id: 9,  name: '8点' },
    { id: 10, name: '9点' },
    { id: 11, name: '10点' }
  ]

  include ActiveHash::Associations
  has_many :reviews

  end