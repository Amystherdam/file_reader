class Record < ApplicationRecord
  def self.import_file(file)
    archive = file.path
    open(archive).each do |line|
      begin
        line = line.split("\t")

        next if line[0] == "Comprador"

        buyer = line[0].strip rescue row[0]
        description = line[1].strip rescue line[1] 
        unity_price = line[2].to_f.strip rescue line[2].to_f
        quantiti = line[3].to_i.strip rescue line[3] .to_i
        address = line[4].strip rescue line[4] 
        provider = line[5].strip rescue line[5] 

        Record.create(buyer: buyer, description: description, unity_price: unity_price,  quantiti: quantiti,  address: address,  provider: provider)
      rescue Exception => err
        errors << err.message
      end
    end
  end
end
