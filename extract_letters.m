function [ letters ] = extract_letters( words )
% Extracting letters in an array of words
% returns 2d cell array; each row represents a word
% each cell in a row represents letters of a this word
    letters = {};
    for i = 1 : length(words) 
       word = cell2mat(words(i));
       [lab,num] = bwlabel(word);
      % figure;
       lettersinword = {};
       for i = 1:num
            [r,c] = find(lab == i);
            letter = word(min(r):max(r),min(c):max(c),:);
            lettersinword = [lettersinword letter];
%              subplot(3,4,i)
%              imshow(letter);
       end
       lettersinword = {lettersinword};
       letters = [letters ; lettersinword];
    end
end

