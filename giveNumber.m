function[ocrResults] = giveNumber()
    im = imread('test1.jpg');
    ocrResults = ocr(im);
end