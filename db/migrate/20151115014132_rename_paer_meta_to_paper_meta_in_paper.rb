class RenamePaerMetaToPaperMetaInPaper < ActiveRecord::Migration
  def change

  	rename_column :papers, :paerMeta, :paperMeta

  end
end
