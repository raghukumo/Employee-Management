class LeaveConfiguration < ApplicationRecord
validates :sick_leaves, numericality: { only_decimal: true, message: "Numbers only. No sign allowed."  }
validates :privilege_leaves, numericality: { only_decimal: true, message: "Numbers only. No sign allowed."  }
validates :work_from_home, numericality: { only_decimal: true, message: "Numbers only. No sign allowed."  }
validates :casual_leaves, numericality: { only_decimal: true, message: "Numbers only. No sign allowed."  }
end
