class DistrictFinance

  attr_reader :salaries_total, 
              :salaries_instruction,
              :total_expenditure

  def initialize(data)

    @salaries_total = data[:results].first[:salaries_total]

    @salaries_instruction = data[:results].first[:salaries_instruction]

    @total_expenditure = data[:results].first[:exp_total]

  end

end