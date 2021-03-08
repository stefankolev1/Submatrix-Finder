%[1 0 1 0 0; 1 0 1 1 1; 1 1 1 1 1 ; 1 0 0 1 0]
cols = input('Input matrix length');
rows = input('Input matrix height');
matrix = input('Enter matrix')

maxsqlen = 0; 

for (i = 1:rows)
    for (j = 1:cols)
        if (matrix(i,j) == 1)
            sqlen = 1;
            flag = true;
            while ((sqlen + i <= rows) && (sqlen + j <= cols) && flag)
                for (k = j:(sqlen + j))
                    if (matrix(i + sqlen,k) == 0)
                        flag = false;
                         break;
                    end
                end
                for (k = i:(sqlen + i))
                    if (matrix(k,j + sqlen) == 0)
                        flag = false;
                         break;
                    end
                end
                if (flag)
                    sqlen = sqlen + 1;
                end
                if maxsqlen < sqlen
                    maxsqlen = sqlen;
                end
            end
        end
    end
    disp(maxsqlen*maxsqlen)
end
fprintf('The maximum submatrix is')
disp(maxsqlen^2);

                    