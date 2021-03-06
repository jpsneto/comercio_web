class Produto < ActiveRecord::Base
  belongs_to :fornecedor
  validates :descricao, presence: true

  enum unidade: [:pc, :kg, :g, :lt, :m, :cm, :m2, :m3]

  mount_uploader :attachment, AttachmentUploader

end

# == Schema Information
#
# Table name: produtos
#
#  id               :integer          not null, primary key
#  descricao        :string
#  unidade          :integer
#  fornecedor_id    :integer
#  fabricante       :string
#  preco_custo      :decimal(, )
#  margem_lucro     :decimal(, )
#  custo_medio      :decimal(, )
#  preco_venda      :decimal(, )
#  estoque_atual    :string
#  estoque_minimo   :string
#  observacoes      :text
#  cst              :string
#  aliquota_ipi     :decimal(, )
#  codigo_ipi       :string
#  aliquota_icms    :decimal(, )
#  base_calculo     :decimal(, )
#  peso_bruto       :string
#  peso_liquido     :string
#  precisao_chegada :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  attachment       :string
#
# Indexes
#
#  index_produtos_on_fornecedor_id  (fornecedor_id)
#
