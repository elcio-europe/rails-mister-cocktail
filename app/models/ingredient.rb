class Ingredient < ApplicationRecord

  has_many :doses
  belongs_to :cocktail, through: :doses, dependent: :destroy
  ## ver se nao deve ser atraves de doses, ao inves de direto no cocktail


  validates :name, uniqueness: true, presence: true


end
