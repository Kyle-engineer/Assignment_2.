% Author Name: Kyle Omiatek
% Email: Omiate75@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Date: 10/4/2024

function encrypted_message = caesar_cipher(message, shift)
    % Function to perform Caesar cipher encryption
    % message: string of lowercase letters to encrypt
    % shift: integer shift value (between 1 and 25)

     encrypted_message = '';  % Initialize the encrypted message

         % Loop through each character in the message
    for i = 1:length(message)
        char_code = message(i);  % Get the current character
        
        % Check if the character is a lowercase letter
        if char_code >= 'a' && char_code <= 'z'
% Shift the letter and handle wrap-around using modulo
            shifted_char = mod((char_code - 'a' + shift), 26) + 'a';

            %Shift the letter and handle wrap around
            shifted_car = (char_code + shift);
            if shifted_car > 'z' 
                shifted_char - 26;
            end
            encrypted_message = [encrypted_message, char(shifted_char)];  % Append shifted letter
              else
            % If the character is not a lowercase letter, keep it unchanged
            encrypted_message = [encrypted_message, message(i)];
        end
    end
end
% Prompt the user for input
message = input('Enter a message to encrypt (lowercase only): ', 's');
shift = input('Enter a shift value (between 1 and 25): ');

% Call the caesar_cipher function
encrypted_message = caesar_cipher(message, shift);

% Display the original and encrypted messages
fprintf('Original message: %s\n', message);
fprintf('Encrypted message: %s\n', encrypted_message);
