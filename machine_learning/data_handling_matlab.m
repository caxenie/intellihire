function [race,age,engnat,gender,hand,source,country,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,O1,O2,O3,O4,O5,O6,O7,O8,O9,O10] = importfile(filename, startRow, endRow)
%IMPORTFILE Import numeric data from a text file as column vectors.
%   [RACE,AGE,ENGNAT,GENDER,HAND,SOURCE,COUNTRY,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,O1,O2,O3,O4,O5,O6,O7,O8,O9,O10]
%   = IMPORTFILE(FILENAME) Reads data from text file FILENAME for the
%   default selection.
%
%   [RACE,AGE,ENGNAT,GENDER,HAND,SOURCE,COUNTRY,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,O1,O2,O3,O4,O5,O6,O7,O8,O9,O10]
%   = IMPORTFILE(FILENAME, STARTROW, ENDROW) Reads data from rows STARTROW
%   through ENDROW of text file FILENAME.
%
% Example:
%   [race,age,engnat,gender,hand,source,country,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,O1,O2,O3,O4,O5,O6,O7,O8,O9,O10]
%   = importfile('data.csv',2, 19720);
%
%    See also TEXTSCAN.

% Auto-generated by MATLAB on 2016/04/23 10:15:31

%% Initialize variables.
delimiter = '\t';
if nargin<=2
    startRow = 2;
    endRow = inf;
end

%% Format string for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
%	column4: double (%f)
%   column5: double (%f)
%	column6: double (%f)
%   column7: text (%s)
%	column8: double (%f)
%   column9: double (%f)
%	column10: double (%f)
%   column11: double (%f)
%	column12: double (%f)
%   column13: double (%f)
%	column14: double (%f)
%   column15: double (%f)
%	column16: double (%f)
%   column17: double (%f)
%	column18: double (%f)
%   column19: double (%f)
%	column20: double (%f)
%   column21: double (%f)
%	column22: double (%f)
%   column23: double (%f)
%	column24: double (%f)
%   column25: double (%f)
%	column26: double (%f)
%   column27: double (%f)
%	column28: double (%f)
%   column29: double (%f)
%	column30: double (%f)
%   column31: double (%f)
%	column32: double (%f)
%   column33: double (%f)
%	column34: double (%f)
%   column35: double (%f)
%	column36: double (%f)
%   column37: double (%f)
%	column38: double (%f)
%   column39: double (%f)
%	column40: double (%f)
%   column41: double (%f)
%	column42: double (%f)
%   column43: double (%f)
%	column44: double (%f)
%   column45: double (%f)
%	column46: double (%f)
%   column47: double (%f)
%	column48: double (%f)
%   column49: double (%f)
%	column50: double (%f)
%   column51: double (%f)
%	column52: double (%f)
%   column53: double (%f)
%	column54: double (%f)
%   column55: double (%f)
%	column56: double (%f)
%   column57: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'EmptyValue' ,NaN,'HeaderLines', startRow(1)-1, 'ReturnOnError', false);
for block=2:length(startRow)
    frewind(fileID);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'EmptyValue' ,NaN,'HeaderLines', startRow(block)-1, 'ReturnOnError', false);
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
race = dataArray{:, 1};
age = dataArray{:, 2};
engnat = dataArray{:, 3};
gender = dataArray{:, 4};
hand = dataArray{:, 5};
source = dataArray{:, 6};
country = dataArray{:, 7};
E1 = dataArray{:, 8};
E2 = dataArray{:, 9};
E3 = dataArray{:, 10};
E4 = dataArray{:, 11};
E5 = dataArray{:, 12};
E6 = dataArray{:, 13};
E7 = dataArray{:, 14};
E8 = dataArray{:, 15};
E9 = dataArray{:, 16};
E10 = dataArray{:, 17};
N1 = dataArray{:, 18};
N2 = dataArray{:, 19};
N3 = dataArray{:, 20};
N4 = dataArray{:, 21};
N5 = dataArray{:, 22};
N6 = dataArray{:, 23};
N7 = dataArray{:, 24};
N8 = dataArray{:, 25};
N9 = dataArray{:, 26};
N10 = dataArray{:, 27};
A1 = dataArray{:, 28};
A2 = dataArray{:, 29};
A3 = dataArray{:, 30};
A4 = dataArray{:, 31};
A5 = dataArray{:, 32};
A6 = dataArray{:, 33};
A7 = dataArray{:, 34};
A8 = dataArray{:, 35};
A9 = dataArray{:, 36};
A10 = dataArray{:, 37};
C1 = dataArray{:, 38};
C2 = dataArray{:, 39};
C3 = dataArray{:, 40};
C4 = dataArray{:, 41};
C5 = dataArray{:, 42};
C6 = dataArray{:, 43};
C7 = dataArray{:, 44};
C8 = dataArray{:, 45};
C9 = dataArray{:, 46};
C10 = dataArray{:, 47};
O1 = dataArray{:, 48};
O2 = dataArray{:, 49};
O3 = dataArray{:, 50};
O4 = dataArray{:, 51};
O5 = dataArray{:, 52};
O6 = dataArray{:, 53};
O7 = dataArray{:, 54};
O8 = dataArray{:, 55};
O9 = dataArray{:, 56};
O10 = dataArray{:, 57};

