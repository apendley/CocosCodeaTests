SpriteFrameTest = CCClass(CCLayer)

function SpriteFrameTest:init()
    CCLayer.init(self)
    
    local size = self:size()
    local img = "Planet Cute:Gem Green"
    
    local bn = CCSpriteBatchNode(img)
    bn:setSize(size)
    bn:setAnchor(self:anchor())
    bn:setPosition(self:position())
    bn:setIgnoreAnchorForPosition(true)
    self:addChild(bn)
    self.batchNode = bn
    
    local w, h = spriteSize(img)
    local frame = CCSpriteFrame(img, ccRect(0, 0, w, h))
    CCSharedSpriteFrameCache():addFrame(frame, img)
    
    ---[[
    local s = CCSprite:alloc():initWithFrame(frame)
    s:setPosition(size/2)
    bn:addChild(s)
    --]]
    
    --[[
    -- demonstrate that non-batched sprites will not work
    -- correctly with sprite frames
    local s = CCSprite(img)    
    s:setPosition(size/2)
    bn:addChild(s)    
    s:setDisplayFrame(frame)
    --]]
    
end