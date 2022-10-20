class DistrictFinance

  attr_reader :salaries_total, 
              :salaries_instruction,
              :total_expenditure,
              :expenses_for_instruction

  def initialize(data)

    @salaries_total = data[:results].first[:salaries_total]

    @salaries_instruction = data[:results].first[:salaries_instruction]

    @expenses_for_instruction = data[:results].first[:exp_current_instruction_total]

    @total_expenditure = data[:results].first[:exp_total]

  end

end