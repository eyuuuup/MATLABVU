function[results] = giveNumberMSER()
    
    results = [];
    
    while(true)
        
        videoStr = input('Take a new snapshot of picture? Y/N: ', 's');
        if strcmp(videoStr, 'Y')
            vid = videoinput ('winvideo' , 1);
            start(vid);
            im = getsnapshot(vid);
            stop(vid);
            delete(vid);
            fileStr = input('File name of new picture (%%%.bmp) : ', 's');
            imwrite(im,'fileStr','bmp');

        else
            fileStr = input('File name of to be scanned picture: ', 's');
        end
         
        formatStr = input('Is the picture formatted neatly? Y/N: ', 's');
        if strcmp(formatStr, 'Y')
            formatStr = 'auto';
        else
            formatStr = 'word';
        end
        
        im = imread(fileStr);
        
        hold on
        imshow(im);
        roi = round(getPosition(imrect));
        close;
        hold off;
        
        I = rgb2gray(im);
        level = graythresh(I);
        I = imbinarize(I, level);
        I = imopen(I, strel('disk', 1));
        I = imcomplement(I);
        imshow(I);
       
        
        ocrResults = ocr(I, roi, 'CharacterSet', '0123456789', 'TextLayout', formatStr);
        results = [results; ocrResults.Words];
        continueStr = input('Scan more numbers? Y/N: ', 's');
      
        if strcmp(continueStr, 'N')
            break;
        end
        
    end
  
end