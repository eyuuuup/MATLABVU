function[results] = giveNumberMSER()
    
    results = [];
    
    while(true)
        
        videoStr = input('Take a new snapshot of picture? Y/N: ', 's');
        
        if strcmp(videoStr, 'Y')
            
            vid = videoinput ('winvideo' , 1);  %specify video input
            start(vid);
            disp('Snapping picture...');
            im = getsnapshot(vid);              %get video input
            stop(vid);
            delete(vid);
            fileStr = input('File name of new picture (%%%.bmp) : ', 's');
            imwrite(im,fileStr,'bmp');          %save video input

        else
            fileStr = input('File name of to be scanned picture: ', 's');
        end
         
        formatStr = input('Is the picture formatted neatly? Y/N: ', 's');
        if strcmp(formatStr, 'Y')
            formatStr = 'auto'; %let ocr decide the document format
        else
            formatStr = 'word'; %messy document format specified
        end
        
        im = imread(fileStr); %read image
                      
        I = rgb2gray(im); %greyschale the image
        level = graythresh(I); %determine the level threshold
        I = imbinarize(I, level); %transform into binary image
        I = imopen(I, strel('disk', 1)); %erosion followed by dilation
        I = imcomplement(I); %take the imcomplement of the image
   
        imshow(I);
        roi = round(getPosition(imrect)); %specify region of interest
        close;
        
        ocrResults = ocr(I, roi, 'CharacterSet', '0123456789', 'TextLayout', formatStr);
        results = [results; ocrResults.Words]; %append numbers from ocr to result
        continueStr = input('Scan more numbers? Y/N: ', 's');
      
        if strcmp(continueStr, 'N')
            break;
        end
        
    end
  
end