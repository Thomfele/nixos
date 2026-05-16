
{ pkgs, config, lib, ... }:

{
  # Assign admin to audio group.
  users.users.${config.users.admin}.extraGroups = [ "audio" ];

  environment.systemPackages = with pkgs; [
    alsa-utils
  ];

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = false;
  };

  # Save sound card state on shutdown.
  hardware.alsa.enablePersistence = true;

  # Enable RealtimeKit for audio purposes.
  security.rtkit.enable = true;

}
