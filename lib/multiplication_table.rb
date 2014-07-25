def multiplication_table(size=12)
  columns = (1..size).to_a
  rows = (1..size).to_a
  all_products = []
  columns.each do |col|
  row_of_products = []  
    rows.each do |row|
      row_of_products << col * row unless col == 1 || row == 1
    end
    row_of_products = row_of_products.join("\t")
    all_products << row_of_products unless row_of_products.empty?
  end
  columns = columns.join("\t")
  output = "#{columns}\n"
  all_products.each_with_index do |product_row, i|
    output << "#{rows[i + 1]}\t#{product_row}\n"
  end
  puts output
end

multiplication_table
multiplication_table(5)
