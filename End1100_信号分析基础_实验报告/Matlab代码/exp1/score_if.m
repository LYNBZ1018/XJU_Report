score = input('Please input a score: ');

if score >= 90 && score <= 100
    grade = 'A';
elseif score >= 80 && score <= 89
    grade = 'B';
elseif score >= 70 && score <= 79
    grade = 'C';
elseif score >= 60 && score <= 69
    grade = 'D';
elseif score >= 0 && score < 60
    grade = 'E';
else
    error('Not a correct score');
end

fprintf('You grade is：%s\n', grade);
