function initImageLoader()
    log("init")
    LoadImages()
    sprite()
end

function LoadImages()
    imageStatus='Ready' --tells draw it's ok to draw the scene (will be turned off if we have to download images)
    output.clear()
    --pass through Codea name of image and internet url
    --not in Codea, will be downloaded and saved
    
    img = {}

    img[1] = LoadImage('Project:penny','https://github.com/interactivenyc/PokerChips/blob/master/penny.png')
    img[2] = LoadImage('Project:nickel','https://github.com/interactivenyc/PokerChips/blob/master/nickel.png')
    img[3] = LoadImage('Project:dime','https://github.com/interactivenyc/PokerChips/blob/master/dime.png')
    img[4] = LoadImage('Project:quarter','https://github.com/interactivenyc/PokerChips/blob/master/quarter.png')
    
    img[5] = LoadImage('Project:penny','https://github.com/interactivenyc/PokerChips/blob/master/penny@2x.png')
    img[6] = LoadImage('Project:nickel','https://github.com/interactivenyc/PokerChips/blob/master/nickel@2x.png')
    img[7] = LoadImage('Project:dime','https://github.com/interactivenyc/PokerChips/blob/master/dime@2x.png')
    img[8] = LoadImage('Project:quarter','https://github.com/interactivenyc/PokerChips/blob/master/quarter@2x.png')
    
    if imageStatus=='Ready' then AllImagesDownloaded() end
end

--downloads images one by one
function LoadImage(fileName,url)
    log("LoadImage: "..url)
    local i=readImage(fileName)
    if i~=nil then return i end
    --not found, we need to download, add to queue (ie table)
    if imageTable==nil then
        imageTable={}
    end
    imageTable[#imageTable+1]={name=fileName,url=url}
    log('Queueing fileName: ',fileName)
    imageStatus='Loading'
    --if the first one, go ahead and download
    if #imageTable==1 then
        http.request(imageTable[1].url,ImageDownloaded)
        log('loading',imageTable[1].url)
    end
end

--saves downloaded images
function ImageDownloaded(img)
    log(imageTable[1].name,'ImageDownloaded')
    saveImage(imageTable[1].name,img)  --save
    table.remove(imageTable,1)
    --load next one if we have any more to do
    if #imageTable>0 then
        http.request(imageTable[1].url,ImageDownloaded)
        log('loading',imageTable[1].name)
    else
        LoadImages()
    end
end

function AllImagesDownloaded()
    --output.clear()
    log("AllImagesDownloaded");
end

