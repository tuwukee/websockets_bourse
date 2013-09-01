module TidingHelper
  def show_tiding(tiding)
    I18n.t("enumerize.tiding.kind.#{tiding.kind}", :name => tiding.name,
                                                   :amount => tiding.amount,
                                                   :sold_amount => tiding.sold_amount,
                                                   :date => tiding.created_at)
  end
end
