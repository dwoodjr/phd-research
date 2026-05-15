# motors.py — Movement II: Sun Ra Cryosleep
# DRV8833 dual H-bridge motor control via PWM

from machine import Pin, PWM
import config

_PWM_FREQ = 5000  # 5kHz — inaudible to humans, good for DC motors

class Motor:
    """
    Single motor channel via DRV8833.
    IN1 = PWM speed, IN2 = direction (or brake logic).
    """
    def __init__(self, pin_in1, pin_in2):
        self._pwm = PWM(Pin(pin_in1), freq=_PWM_FREQ, duty=0)
        self._dir = Pin(pin_in2, Pin.OUT)
        self._dir.value(0)
        self._speed = 0.0

    def set_speed(self, speed):
        """
        speed: -1.0 (full reverse) to 1.0 (full forward). 0.0 = stop.
        """
        speed = max(-1.0, min(1.0, speed))
        self._speed = speed

        if speed >= 0:
            self._dir.value(0)
            duty = self._scale_duty(speed)
        else:
            self._dir.value(1)
            duty = self._scale_duty(-speed)

        self._pwm.duty(duty)

    def set_normalized(self, value):
        """
        value: 0.0–1.0 normalized (e.g. from sensor read).
        Maps to MOTOR_MIN_DUTY–MOTOR_MAX_DUTY range in forward direction.
        """
        if value < 0.01:
            self.stop()
            return
        scaled = config.MOTOR_MIN_DUTY + value * (config.MOTOR_MAX_DUTY - config.MOTOR_MIN_DUTY)
        self.set_speed(scaled)

    def stop(self):
        self._pwm.duty(0)
        self._dir.value(0)
        self._speed = 0.0

    def brake(self):
        """Hard brake: both pins HIGH via DRV8833 logic."""
        self._pwm.duty(1023)
        self._dir.value(1)

    def _scale_duty(self, normalized):
        # normalized: 0.0–1.0 → 0–1023 (10-bit PWM)
        return int(normalized * 1023)

    @property
    def speed(self):
        return self._speed


# Module-level motor instances
motor_a = Motor(config.PIN_MOTOR_A_IN1, config.PIN_MOTOR_A_IN2)
motor_b = Motor(config.PIN_MOTOR_B_IN3, config.PIN_MOTOR_B_IN4)

def stop_all():
    motor_a.stop()
    motor_b.stop()
