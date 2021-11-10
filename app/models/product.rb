class Product < ApplicationRecord
  has_many :user, through: :exportation
  has_many :user, through: :importation
  has_many :importation
  has_many :exportation

  validates :name, presence: true
  validates :color, presence: true
  validates :size, presence: true
  validates :quantity, presence: true

  # def self.search(search) #self.でクラスメソッドとしている
  #   if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
  #     Product.where(['name LIKE ?', "%#{search}%"])
  #   else
  #     Product.all #全て表示。
  #   end
  # end
end
