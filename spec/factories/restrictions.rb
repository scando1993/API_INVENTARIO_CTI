FactoryGirl.define do
  factory :restriction do
    canRead false
    canIngress false
    canModify false
    canEliminate false
    canPrint false
  end
end
