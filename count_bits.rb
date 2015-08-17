def count_bits(file_path)
  return p 'Error: file path and name is not set' if file_path.nil?
  return p 'Error: file does not exist' unless File.exist? file_path

  file = File.binread(file_path)
  bitSequence = file.unpack('B*').to_s
  p "found #{bitSequence.count('1')} bits set to 1"
  p "found #{bitSequence.count('0')} bits set to 0"
end
