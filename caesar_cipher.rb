def caesar_cipher(text, shift)
  shifted_text = text.chars.map do |char|
    if char.match?(/[A-Z]/)
      # Shift uppercase letter
      ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    elsif char.match?(/[a-z]/)
      # Shift lowercase letter
      ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
    else
      # Return non-alphabetic characters unchanged
      char
    end
  end
  shifted_text.join
end


puts caesar_cipher("What a string!", 5)  # Output should be "Bmfy f xywnsl!"
