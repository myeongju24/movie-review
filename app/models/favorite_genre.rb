class FavoriteGenre < ActiveHash::Base
  self.data = [
    { id: 1,  name: '--' },
    { id: 2,  name: 'アクション' },
    { id: 3,  name: 'アドベンチャー' },
    { id: 4,  name: 'コメディ' },
    { id: 5,  name: 'SF' },
    { id: 6,  name: 'ファンタジー' },
    { id: 7,  name: '恋愛' },
    { id: 8,  name: 'ドキュメンタリー' },
    { id: 9,  name: '戦争' },
    { id: 10, name: 'ホラー' },
    { id: 11, name: 'ヒューマンドラマ' }
  ]

  include ActiveHash::Associations
  has_many :users
end
