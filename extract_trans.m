
function [ letters ] = extract_trans( trans )
% Extracting translation from img
    lines = extract_lines(trans);
    words = extract_words(lines);
    letters = extract_letters(words);
end

