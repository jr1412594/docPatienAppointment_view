json.appointment do
    json.partial! 'partials/appointment', appointment: @appointment
    json.partial! 'partials/appointment', doctor: @doctor
    json.partial! 'partials/appointment', patient: @patient
end