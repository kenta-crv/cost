class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string :company #会社名
      t.string :name #担当者名
      t.string :tel #電話番号
      t.string :mail #メールアドレス
      t.string :address #住所
      t.string :url #会社URL
      t.string :saraly_month #とある1名の月額報酬
      t.string :saraly_year #とある1名の年間報酬
      t.string :target #役員人数
      t.string :fiscal_year #決算期
      t.string :period #導入時期
      t.string :remarks #その他
      t.timestamps
    end
  end
end
