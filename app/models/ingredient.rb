class Ingredient < ApplicationRecord

  has_many :doses
  # belongs_to :cocktail, through: :doses
  ## ver se nao deve ser atraves de doses, ao inves de direto no cocktail

  validates :name, uniqueness: true, presence: true

  ## falta fazer migration com os campos ex: name dos models
end
