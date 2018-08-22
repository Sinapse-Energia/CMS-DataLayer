class AFelectricalmeterHist < ActiveRecord::Base
  belongs_to :ed_logicaldev
  belongs_to :adesc_felectricalmeter
end
