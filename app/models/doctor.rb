class Doctor < ActiveRecord::Base
  # RELACIONAMENTOS DA TABELA DOCTORS
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations
  
  # VALIDAÇÕES DO MODEL DOCTOR
  validates :first_name, length: {minimum:3, maximum:20}
  # validates :first_name, presence: { scope: :last_name }
  # validates :last_name, presence: true
  # validates :last_name, uniqueness: true
  # validates :first_name, uniqueness: true
  validates :first_name, uniqueness: true
  validates :email, format: { with: /\A.*@.*\.com\z/, message: "Email Inválido"}
end