//
//  FriendView.swift
//  Friendz
//
//  Created by Claude Code on 29.10.25.
//

import SwiftUI
import MapKit
import ContactsUI
import Contacts

/// Detail view displaying all information about a friend
struct FriendView: View {
    let friend: Friend
    @State private var showingContactViewer = false

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Header with photo and name
                headerSection

                // Contact details
                VStack(spacing: 0) {
                    if !friend.phoneNumbers.isEmpty {
                        contactSection(
                            title: "phone",
                            icon: "phone.fill",
                            items: friend.phoneNumbers
                        )
                    }

                    if !friend.emailAddresses.isEmpty {
                        contactSection(
                            title: "email",
                            icon: "envelope.fill",
                            items: friend.emailAddresses
                        )
                    }

                    if !friend.postalAddresses.isEmpty {
                        addressSection
                    }
                }
                .background(Color(uiColor: .systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 16)
                .padding(.top, 20)
            }
        }
        .background(Color(uiColor: .systemGroupedBackground))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    showingContactViewer = true
                }) {
                    Label("Open in Contacts", systemImage: "person.crop.circle")
                }
            }
        }
        .sheet(isPresented: $showingContactViewer) {
            ContactViewerSheet(contactIdentifier: friend.contactIdentifier)
        }
    }

    // MARK: - Header Section

    private var headerSection: some View {
        VStack(spacing: 12) {
            // Avatar
            if let photoData = friend.photoData, let uiImage = UIImage(data: photoData) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
            } else if friend.isCompany {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(uiColor: .systemGray4))
                        .frame(width: 100, height: 100)
                    Image(systemName: "building.2")
                        .font(.system(size: 40))
                        .foregroundStyle(.white)
                }
            } else {
                ZStack {
                    Circle()
                        .fill(Color(uiColor: .systemGray4))
                        .frame(width: 100, height: 100)
                    Text(initials)
                        .font(.system(size: 36, weight: .medium))
                        .foregroundStyle(.white)
                }
            }

            // Name
            VStack(spacing: 4) {
                if friend.isCompany {
                    Text(friend.organizationName ?? "")
                        .font(.system(size: 28, weight: .bold))
                } else {
                    HStack(spacing: 6) {
                        Text(friend.firstName)
                        if let middleName = friend.middleName, !middleName.isEmpty {
                            Text(middleName)
                        }
                        Text(friend.lastName)
                            .fontWeight(.semibold)
                    }
                    .font(.system(size: 28))

                    if let organization = friend.organizationName, !organization.isEmpty {
                        Text(organization)
                            .font(.system(size: 17))
                            .foregroundStyle(.secondary)
                    }
                }
            }
        }
        .padding(.top, 30)
        .padding(.bottom, 10)
    }

    // MARK: - Contact Section (Phone/Email)

    private func contactSection(title: String, icon: String, items: [LabeledValue]) -> some View {
        VStack(spacing: 0) {
            ForEach(items.indices, id: \.self) { index in
                let item = items[index]

                if index > 0 {
                    Divider()
                        .padding(.leading, 52)
                }

                HStack(spacing: 16) {
                    // Icon
                    Image(systemName: icon)
                        .font(.system(size: 18))
                        .foregroundStyle(.blue)
                        .frame(width: 20)

                    // Content
                    VStack(alignment: .leading, spacing: 2) {
                        Text(item.label)
                            .font(.system(size: 13))
                            .foregroundStyle(.secondary)
                            .textCase(.lowercase)

                        if title == "phone" {
                            Button(action: {
                                if let url = URL(string: "tel:\(item.value.filter { $0.isNumber || $0 == "+" })") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Text(item.value)
                                    .font(.system(size: 17))
                                    .foregroundStyle(.blue)
                            }
                        } else if title == "email" {
                            Button(action: {
                                if let url = URL(string: "mailto:\(item.value)") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Text(item.value)
                                    .font(.system(size: 17))
                                    .foregroundStyle(.blue)
                            }
                        }
                    }

                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
            }
        }
    }

    // MARK: - Address Section

    private var addressSection: some View {
        VStack(spacing: 0) {
            ForEach(friend.postalAddresses.indices, id: \.self) { index in
                let address = friend.postalAddresses[index]

                if index > 0 {
                    Divider()
                        .padding(.leading, 52)
                }

                HStack(alignment: .top, spacing: 16) {
                    // Icon with geocoding status
                    ZStack {
                        Image(systemName: "location.fill")
                            .font(.system(size: 18))
                            .foregroundStyle(address.hasValidCoordinates ? .blue : .secondary)
                            .frame(width: 20)

                        if !address.hasValidCoordinates {
                            Image(systemName: "slash.circle.fill")
                                .font(.system(size: 10))
                                .foregroundStyle(.white)
                                .background(Circle().fill(Color(uiColor: .systemBackground)))
                                .offset(x: 8, y: -8)
                        }
                    }

                    // Address content
                    VStack(alignment: .leading, spacing: 2) {
                        Text(address.label)
                            .font(.system(size: 13))
                            .foregroundStyle(.secondary)
                            .textCase(.lowercase)

                        VStack(alignment: .leading, spacing: 1) {
                            if !address.street.isEmpty {
                                Text(address.street)
                            }

                            HStack(spacing: 4) {
                                if !address.city.isEmpty {
                                    Text(address.city)
                                }
                                if !address.state.isEmpty {
                                    Text(address.state)
                                }
                                if !address.postalCode.isEmpty {
                                    Text(address.postalCode)
                                }
                            }

                            if !address.country.isEmpty {
                                Text(address.country)
                            }
                        }
                        .font(.system(size: 17))

                        // Coordinates if available
                        if let latitude = address.latitude, let longitude = address.longitude {
                            Text("📍 \(latitude, specifier: "%.6f"), \(longitude, specifier: "%.6f")")
                                .font(.system(size: 13))
                                .foregroundStyle(.secondary)
                                .padding(.top, 4)

                            // Open in Maps button
                            Button(action: {
                                let location = CLLocation(latitude: latitude, longitude: longitude)
                                let mapItem = MKMapItem(location: location, address: nil)
                                mapItem.name = friend.isCompany ? (friend.organizationName ?? "") : "\(friend.firstName) \(friend.lastName)"
                                mapItem.openInMaps(launchOptions: nil)
                            }) {
                                Label("Open in Maps", systemImage: "map")
                                    .font(.system(size: 15))
                            }
                            .padding(.top, 8)
                        } else {
                            Text("Location not geocoded yet")
                                .font(.system(size: 13))
                                .foregroundStyle(.orange)
                                .padding(.top, 4)
                        }
                    }

                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
            }
        }
    }

    // MARK: - Computed Properties

    private var initials: String {
        let firstInitial = friend.firstName.prefix(1)
        let lastInitial = friend.lastName.prefix(1)
        return "\(firstInitial)\(lastInitial)".uppercased()
    }
}

// MARK: - Contact Viewer Sheet

/// A SwiftUI wrapper for CNContactViewController to display a contact from the iOS Contacts app
struct ContactViewerSheet: UIViewControllerRepresentable {
    let contactIdentifier: String
    @Environment(\.dismiss) var dismiss

    func makeUIViewController(context: Context) -> UINavigationController {
        let store = CNContactStore()
        let keys = CNContactViewController.descriptorForRequiredKeys()

        // Try to fetch the contact from the store
        if let contact = try? store.unifiedContact(withIdentifier: contactIdentifier, keysToFetch: [keys]) {
            let viewController = CNContactViewController(for: contact)
            viewController.delegate = context.coordinator
            viewController.allowsEditing = true
            viewController.contactStore = store

            let navigationController = UINavigationController(rootViewController: viewController)

            // Add a Done button to dismiss on the left side
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(
                barButtonSystemItem: .done,
                target: context.coordinator,
                action: #selector(Coordinator.done)
            )

            return navigationController
        } else {
            // If contact not found, show empty navigation controller with error message
            let emptyVC = UIViewController()
            emptyVC.view.backgroundColor = .systemBackground
            let label = UILabel()
            label.text = "Contact not found"
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            emptyVC.view.addSubview(label)
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: emptyVC.view.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: emptyVC.view.centerYAnchor)
            ])

            let navigationController = UINavigationController(rootViewController: emptyVC)
            emptyVC.navigationItem.leftBarButtonItem = UIBarButtonItem(
                barButtonSystemItem: .done,
                target: context.coordinator,
                action: #selector(Coordinator.done)
            )

            return navigationController
        }
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        // No updates needed
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(dismiss: dismiss)
    }

    class Coordinator: NSObject, CNContactViewControllerDelegate {
        let dismiss: DismissAction

        init(dismiss: DismissAction) {
            self.dismiss = dismiss
        }

        func contactViewController(_ viewController: CNContactViewController, didCompleteWith contact: CNContact?) {
            dismiss()
        }

        @objc func done() {
            dismiss()
        }
    }
}

// MARK: - Preview

#Preview("Friend with Full Details") {
    NavigationStack {
        FriendView(friend: {
            let friend = Friend(
                firstName: "Emma",
                lastName: "Wilson",
                middleName: "Rose",
                organizationName: "Acme Corporation",
                phoneNumbers: [
                    LabeledValue(label: "mobile", value: "+1 555 0123"),
                    LabeledValue(label: "work", value: "+1 555 9999")
                ],
                emailAddresses: [
                    LabeledValue(label: "personal", value: "emma.wilson@example.com"),
                    LabeledValue(label: "work", value: "ewilson@acme.com")
                ],
                postalAddresses: [
                    LabeledPostalAddress(
                        label: "home",
                        street: "123 Main Street",
                        city: "San Francisco",
                        state: "CA",
                        postalCode: "94102",
                        country: "USA",
                        latitude: 37.7749,
                        longitude: -122.4194,
                        needsGeocoding: false
                    ),
                    LabeledPostalAddress(
                        label: "work",
                        street: "456 Market St",
                        city: "San Francisco",
                        state: "CA",
                        postalCode: "94105",
                        country: "USA"
                    )
                ],
                contactIdentifier: "preview-1"
            )
            return friend
        }())
    }
}

#Preview("Company Contact") {
    NavigationStack {
        FriendView(friend: {
            let friend = Friend(
                firstName: "",
                lastName: "",
                organizationName: "Tech Solutions Inc",
                isCompany: true,
                phoneNumbers: [
                    LabeledValue(label: "main", value: "+1 555 1000")
                ],
                emailAddresses: [
                    LabeledValue(label: "info", value: "contact@techsolutions.com")
                ],
                postalAddresses: [],
                contactIdentifier: "preview-2"
            )
            return friend
        }())
    }
}
