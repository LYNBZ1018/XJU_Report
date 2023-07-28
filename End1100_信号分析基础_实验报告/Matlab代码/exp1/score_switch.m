score = input('Please input a score: ');

switch true
    case score >= 90 && score <= 100
        grade = 'A';
    case score >= 80 && score <= 89
        grade = 'B';
    case score >= 70 && score <= 79
        grade = 'C';
    case score >= 60 && score <= 69
        grade = 'D';
    case score >= 0 && score < 60
        grade = 'E';
    otherwise
        error('Not a correct score');
end

fprintf('You grade is：%s\n', grade);
