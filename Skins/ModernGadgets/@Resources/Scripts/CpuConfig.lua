; MODERNGADGETS CPU CONFIG SCRIPT
; Based on work by SilverAzide
; Written by iamanai

function Initialize() end

function Update() end

function ConfigCores(cores, threads)

  if threads % 2 = 0 then
    for i=1,16 do
      if not (i / 2) > cores then SKIN:Bang('!WriteKeyValue', 'Variables', 'hideCore' .. i, '0')
      else SKIN:Bang('!WriteKeyValue', 'Variables', 'hideCore' .. i, '1') end
    end
  else
    for i=1,16 do
      if not i > cores then SKIN:Bang('!WriteKeyValue', 'Variables', 'hideCore' .. i, '0')
      else SKIN:Bang('!WriteKeyValue', 'Variables', 'hideCore' .. i, '1') end
    end
  end

end